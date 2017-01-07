/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SeatPlan;

public class Singleton { 
	private static  Singleton INSTANCE = new Singleton(); 
	private Singleton() {} 
	public static Singleton getInstance() { 
		return INSTANCE; 
	}   
        public static Singleton setInstance() { 
		INSTANCE = new Singleton();
                return INSTANCE;
	}
}