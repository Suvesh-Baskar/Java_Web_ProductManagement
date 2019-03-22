package com.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDao {
//	get all product
	public ArrayList<Product> getAllProduct(){
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		PreparedStatement pst = null;
		
		try{
			con = DBUtil.getMyDBConnection();
			pst = con.prepareStatement("select * from product");
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				Product p = new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4));
				result.add(p);
			}
		}catch(Exception e){
			System.out.println(e);
		}
		
		return result;
	}
	
//	Add product
	public void addProduct(Product p){
		Connection con = null;
		PreparedStatement pst = null;
		
		try{
			con = DBUtil.getMyDBConnection();
			pst = con.prepareStatement("INSERT INTO product VALUES(?,?,?,?)");
			pst.setInt(1, p.getProductId());
			pst.setString(2, p.getProductName());
			pst.setString(3, p.getProductCategory());
			pst.setDouble(4, p.getProductPrice());
			
			pst.executeUpdate();
			
			System.out.println("Product added to database");
			
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
//	Get one product
	public Product getProduct(int id){
		Product result = null;
		Connection con = null;
		PreparedStatement pst = null;
		
		try{
			con = DBUtil.getMyDBConnection();
			pst = con.prepareStatement("select * from product where id=?");
			pst.setInt(1,id);
			
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				result = new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4));
			}
			
		}catch(Exception e){
			System.out.println(e);
		}
		
		return result;
	}
}
