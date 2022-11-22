package com.java.project.Models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="add_part")
public class add_part {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	 	
	
	
	    private Integer orderamount;
	 
	 @ManyToOne( fetch = FetchType.LAZY)
	 @JoinColumn(name="order_id")
	    private orders order; 
	 
	 @ManyToOne( fetch = FetchType.LAZY)
	 @JoinColumn(name="part_id")
	 private Parts partorder;
	 //---------------------------------------------------------------
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getOrderamount() {
		return orderamount;
	}
	public void setOrderamount(Integer orderamount) {
		this.orderamount = orderamount;
	}

	public orders getOrder() {
		return order;
	}
	public void setOrder(orders order) {
		this.order = order;
	}
	public Parts getPartorder() {
		return partorder;
	}
	
	public void setPartorder(Parts partorder) {
		this.partorder = partorder;
	}

	 
}
