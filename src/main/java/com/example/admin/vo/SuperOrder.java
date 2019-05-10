package com.example.admin.vo;

import java.util.List;

import com.example.demo.entity.Order;
import com.example.demo.entity.Order2;

public class SuperOrder extends Order {
	private List<Order2> listorder2;

	/**
	 * @return the listorder2
	 */
	public List<Order2> getListorder2() {
		return listorder2;
	}

	/**
	 * @param listorder2 the listorder2 to set
	 */
	public void setListorder2(List<Order2> listorder2) {
		this.listorder2 = listorder2;
	}
	
}
