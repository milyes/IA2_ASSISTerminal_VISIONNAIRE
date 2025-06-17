# -*- coding: utf-8 -*-
import nltk
from nltk.tokenize import word_tokenize
from transformers import pipeline

nltk.download('punkt')

# Modèles IA
model_langage = pipeline("sentiment-analysis", model="distilbert-base-uncased-finetuned-sst-2-english")
model_traduction = pipeline("translation_en_to_fr", model="t5-base")
model_correction = pipeline("text2text-generation", model="t5-base")

class IA_VISIONNAIRE:
    def __init__(self):
        self.nom = "IA2_ASSISTerminal_VISIONNAIRE"
        self.version = "1.0"
        self.memoire = {}

    def analyser_texte(self, texte):
        tokens = word_tokenize(texte)
        sentiment = model_langage(texte)
        return {"tokens": tokens, "sentiment": sentiment[0]["label"]}

    def traduire_texte(self, texte):
        traduction = model_traduction(texte, max_length=400)
        return traduction[0]['translation_text']

    def corriger_orthographe(self, texte):
        prompt = "correct the sentence: " + texte
        correction = model_correction(prompt, max_length=100)
        return correction[0]['generated_text']

    def discuter(self, utilisateur):
        print(f"Bonjour {utilisateur}, je suis {self.nom} ! Tapez 'au revoir' pour quitter.")
        while True:
            question = input("Vous : ")
            if question.lower() == "au revoir":
                print("IA : À bientôt !")
                break
            resultat = self.analyser_texte(question)
            print(f"IA : Sentiment → {resultat['sentiment']}, Mots → {resultat['tokens']}")

if __name__ == "__main__":
    ia = IA_VISIONNAIRE()
    ia.discuter("Ilyes")
