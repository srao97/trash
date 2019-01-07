//test children's game
@isTest
public class Childrens_game 
{
    static testmethod void demo()
    {
        //create the data
        list<Integer> ID=new list<Integer> {1,2,3,4,5};
        
        Test.starttest();
        for(Integer K=0;K<ID.size();k++)
        {
            if(ID[K]==4)
            {
                break;
            }
        }
        Test.stoptest();
    }
}