class CardController < ApplicationController

	def new
	end

	def deal
		@deck = ["acespades", "2spades", "3spades", "4spades", "5spades", "6spades", "7spades", "8spades", "9spades", "10spades", "jackspades", "kingspades", "queenspades", "acediamonds", "2diamonds", "3diamonds", "4diamonds", "5diamonds", "6diamonds", "7diamonds", "8diamonds", "9diamonds", "10diamonds", "jackdiamonds", "kingdiamonds", "queendiamonds", "acehearts", "2hearts", "3hearts", "4hearts", "5hearts", "6hearts", "7hearts", "8hearts", "9hearts", "10hearts", "jackhearts", "kinghearts", "queenhearts", "aceclubs", "2clubs", "3clubs", "4clubs", "5clubs", "6clubs", "7clubs", "8clubs", "9clubs", "10clubs", "jackclubs", "kingclubs", "queenclubs"]
		@hand = Array.new
	end

end