package com.java.project.Models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="parts")
public class Parts {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    
	    @NotEmpty(message="partName is required!")
	    @Size(min=3, max=30, message="partName must be between 3 and 30 characters")
	    private String partName;
	    
	    @NotEmpty(message="description is required!")
	    @Size(min=3, max=100, message="description must be between 3 and 100 characters")
	    private String description;
	    
	    @NotNull
	    @Min(1)
	    private int price;
	    @NotNull
	    @Min(1)
	    private int amount;
	    
	    private String image;
	    public Parts() {}
	    
	    @Column(updatable=false)
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date createdAt;
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date updatedAt;
	    //------------------------------------Relations--------------------------------
	    
	    @ManyToMany(fetch = FetchType.LAZY)
	    @JoinTable(
	        name = "add_parts", 
	        joinColumns = @JoinColumn(name = "part_id"), 
	        inverseJoinColumns = @JoinColumn(name = "order_id")
	    )
	    private List<orders> orders;
	    
	    @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="user_id")
		private User user;
	    
//----------------------------------------------------------------------------------------
		public Long getId() {
			return id;
		}

		public String getImage() {
			return image;
		}

		public void setImage(String image) {
			this.image = image;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getPartName() {
			return partName;
		}

		public void setPartName(String partName) {
			this.partName = partName;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public int getPrice() {
			return price;
		}

		public void setPrice(int price) {
			this.price = price;
		}

		public int getAmount() {
			return amount;
		}

		public void setAmount(int amount) {
			this.amount = amount;
		}

		public Date getCreatedAt() {
			return createdAt;
		}

		public void setCreatedAt(Date createdAt) {
			this.createdAt = createdAt;
		}

		public Date getUpdatedAt() {
			return updatedAt;
		}

		public void setUpdatedAt(Date updatedAt) {
			this.updatedAt = updatedAt;
		}

		public List<orders> getOrders() {
			return orders;
		}

		public void setOrders(List<orders> orders) {
			this.orders = orders;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}
	    
	    //--------------------------------------------------getter&Setter-----
	
	    
}
