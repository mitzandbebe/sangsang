package com.gr.ssgb.order.model;

import java.sql.Timestamp;

public class OrderVO {
	private int orderNo;
	private String customerId;
	private int totalPrice;
	private String deliveryStatus;
	private Timestamp orderDate;
	private Timestamp deliveryDate;
	private Timestamp paymentEndDate;
	private String  message;
	private String  customerName;
	private String  hp;
	private String  zipcode;
	private String  address;
	private String addressDetail;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getDeliveryStatus() {
		return deliveryStatus;
	}
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public Timestamp getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Timestamp deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public Timestamp getPaymentEndDate() {
		return paymentEndDate;
	}
	public void setPaymentEndDate(Timestamp paymentEndDate) {
		this.paymentEndDate = paymentEndDate;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddressDetail() {
		return addressDetail;
	}
	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}
	
	@Override
	public String toString() {
		return "OrderVO [orderNo=" + orderNo + ", customerId=" + customerId + ", totalPrice=" + totalPrice
				+ ", deliveryStatus=" + deliveryStatus + ", orderDate=" + orderDate + ", deliveryDate=" + deliveryDate
				+ ", paymentEndDate=" + paymentEndDate + ", message=" + message + ", customerName=" + customerName
				+ ", hp=" + hp + ", zipcode=" + zipcode + ", address=" + address + ", addressDetail=" + addressDetail
				+ "]";
	}
	
	
}
