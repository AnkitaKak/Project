package com.niit.dao;

import com.niit.model.UserOrder;

public interface UserOrderDAO {
	public void addOrder(UserOrder userOrder);
	public UserOrder getUserOrderById(int userOrderId);

}
