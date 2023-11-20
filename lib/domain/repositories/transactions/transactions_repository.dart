

abstract class TransactionsRepository {
  
  Future<void> addGetTransction({required String fromContactId,required String toContactId,required int amount,required bool isPayed});
  Future<void> addGiveTransction({required String fromContactId,required String toContactId,required int amount});
  
 
}
