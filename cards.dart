void main(){
  var deck = new Deck();
  deck.shuffle();
//   print(deck.cardsWithSuit("Diamonds"));
  print(deck);
  deck.removeCard("Clubs", "Ace");
  print(deck);
}

class Deck {
  List<Card> cards = [];
  
  Deck() {
    var ranks = ['Ace','Two','Three','Four','Five'];
    var suits = ['Diamonds', 'Hearts', 'Spades', 'Clubs'];
    
    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(suit, rank);
        cards.add(card);
      }
    }
    
  }
  
  shuffle() {
    cards.shuffle();
  }
  
  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }
  
  deal(int noCards) {
    var dealt = cards.sublist(0, noCards);
    cards.removeRange(0,noCards);
    return dealt;
  }
  
  removeCard(String suit, String rank) {
    return cards.removeWhere((card) => card.suit == suit && card.rank == rank );
  }
  
  toString() {
    return cards.toString();
  }
  
}

class Card {
  String suit;
  String rank;
  
  Card(this.suit, this.rank);
  
   toString() {
    return "$rank of $suit";
  }
}