package com.java.project.Models;




import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
    
public class Login {
    
    @NotEmpty(message="")
    @Email(message="")
    private String email;
    
    @NotEmpty(message="")
    @Size(min=8, max=128, message="")
    private String password;
    
    public Login() {}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    
  
    
}

