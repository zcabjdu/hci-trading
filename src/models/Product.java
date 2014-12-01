package models;

public class Product {
	
	private int productid;
	private String name;
	
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

    @Override
    public String toString() {
        return "Product [productid=" + productid + ", name=" + name + "]";
    } 
}

