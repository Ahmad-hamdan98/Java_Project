package com.java.project.Models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="cars")
public class Cars {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    
	    @NotEmpty(message="cartype is required!")
	    @Size(min=3, max=30, message="cartype must be between 3 and 30 characters")
	    private String cartype;
	    

	    @Min(1990)
	    @Max(2022)
	    private int model;
	    
	    @NotEmpty(message="description is required!")
	    @Size(min=3, max=100, message="description must be between 3 and 100 characters")
	    private String description;
	    
	    
	    @NotEmpty(message="carcolor is required!")
	    @Size(min=3, max=30, message="carcolor must be between 3 and 30 characters")
	    private String carcolor;
	    public Cars() {}
	    //-----------------------------------------------------------------
	    @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name="user_id")
		private User user;
	    //---------------------------------------------------------|||||||||

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getCartype() {
			return cartype;
		}

		public void setCartype(String cartype) {
			this.cartype = cartype;
		}

		public int getModel() {
			return model;
		}

		public void setModel(int model) {
			this.model = model;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getCarcolor() {
			return carcolor;
		}

		public void setCarcolor(String carcolor) {
			this.carcolor = carcolor;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}
	    
	    
	    
}
