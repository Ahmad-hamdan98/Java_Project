package com.java.project.Models;

import java.util.Date;
import java.util.List;

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
import javax.validation.constraints.Future;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="orders")
public class orders {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	 
	   
	  
	    //--------------------------------------------------------------
	    @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="user_id")
		private User user;
	    
	    @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="car_id")
		private Cars car;
	    
	    @ManyToMany(fetch = FetchType.LAZY)
	    @JoinTable(
	            name = "add_parts", 
	            joinColumns = @JoinColumn(name = "order_id"), 
	            inverseJoinColumns = @JoinColumn(name = "part_id")
	        )
	    private List<Parts> parts;


		public Long getId() {
			return id;
		}


		public void setId(Long id) {
			this.id = id;
		}




		public User getUser() {
			return user;
		}


		public void setUser(User user) {
			this.user = user;
		}


		public List<Parts> getParts() {
			return parts;
		}


		public void setParts(List<Parts> parts) {
			this.parts = parts;
		}


		public Cars getCar() {
			return car;
		}


		public void setCar(Cars car) {
			this.car = car;
		}

		
	
}
