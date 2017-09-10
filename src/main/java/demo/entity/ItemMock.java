package demo.entity;

import demo.hello.Score;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class ItemMock {

    public static Item mockItem(){
        Item item;
        try {
            SecureRandom secureRandom3 = SecureRandom.getInstance("SHA1PRNG");

            item = new Item("行動A+"
                    , secureRandom3.nextInt(5)+1
                    , secureRandom3.nextInt(5)+1
                    , secureRandom3.nextInt(5)+1
                    , secureRandom3.nextInt(5)+1
                    , secureRandom3.nextInt(5)+1
                    , secureRandom3.nextInt(5)+1);

            return item;
        } catch (NoSuchAlgorithmException e) {
            System.out.println("NoSuchAlgorithmException");
        }

        return null;
    }

}
