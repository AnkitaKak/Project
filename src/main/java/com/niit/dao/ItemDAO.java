package com.niit.dao;

import java.util.List;

import com.niit.model.Item;

public interface ItemDAO{
	
	public void addItem(Item item);
	public List<Item> getAllItems();
    public Item getItemById(int itemId);
    public void removeItem(Item item);
	
}
