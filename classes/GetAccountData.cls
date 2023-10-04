public class GetAccountData {
    @AuraEnabled(cacheable=true)
    public static List<Account> fetchData(){
        List<Account> accList = [SELECT Id, Name, Type, Phone, Industry, AnnualRevenue FROM Account Order By CreatedDate Desc Limit 10];
        return accList;
    }

}