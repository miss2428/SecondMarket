package dao;

import org.junit.Test;

import java.util.Scanner;

public class HelpOthers {

    @Test
    public void test01()
    {
        double s = 12;
        int addedNumber = 12;
        int cnt= 1;
        int n;
        double temp = 12;
/*        Scanner sc = new Scanner(System.in);
        n = sc.nextInt();*/
        while(Math.abs(temp) >= 10e-4)
        {
            addedNumber += 10;
            cnt++;
            if(cnt%2 == 0)
            {
                temp = -1.0/addedNumber;
            }
            else
            {
                temp = 1.0/addedNumber;
            }
            s += temp;
        }
        System.out.println(s);
    }
    @Test
    public void test02()
    {
        int[] a ={2, 5, 9, 16, 20, 0};
        int insertNumber;
        Scanner sc= new Scanner(System.in);
        insertNumber = sc.nextInt();
        int cursor = a.length-1;
        for(int i = 0; i < a.length-1; i++)
        {
            if(insertNumber <= a[i])
            {
                cursor = i;
                break;
            }
        }
        for(int i = a.length-2; i >= cursor; i--)
        {
            a[i+1] = a[i];
        }
        a[cursor] = insertNumber;
        for (int i = 0; i < a.length; i++)
        {
            System.out.print(a[i] + " ");
        }
    }
}
