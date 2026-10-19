#!/usr/bin/env python3
class IA22Core:
    VERSION = "IA22_CORE V4.1"
    def __init__(self):
        self.ram = []
        self.lex_pos = ["satisfait","bien","bon","excellent","merci","ok"]
        self.lex_neg = ["mauvais","nul","bug","erreur","panne","critique"]
        self.poids = {"bug":0.9, "panne":0.9, "urgent":0.8, "critique":0.8}
    def agent_guard(self, t):
        import re
        mots = re.findall(r'\b\w+\b', t.lower())
        sp = sum(1 for m in mots if m in self.lex_pos)
        sn = sum(1 for m in mots if m in self.lex_neg)
        score = sum(self.poids.get(m, 0) for m in mots)
        niveau = "CRITIQUE 🚨" if score >= 0.8 else "NEGATIVE" if sn > sp else "POSITIVE" if sp > sn else "NEUTRAL"
        confiance = min(0.5 + max(sp,sn) * 0.1 + score, 0.99)
        return {"niveau": niveau, "confiance": round(confiance, 2), "score_critique": round(score, 2)}
    def traiter(self, texte):
        from datetime import datetime
        result = {"timestamp": str(datetime.now()), "input": texte}
        result["analyse"] = self.agent_guard(texte)
        self.ram.append(result)
        return result
