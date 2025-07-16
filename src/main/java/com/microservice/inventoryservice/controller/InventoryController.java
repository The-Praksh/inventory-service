package com.microservice.inventoryservice.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
public class InventoryController {
	
	//get method
	@GetMapping("/inventory/check")
	public String checkInventory() {
		return "in Stock";
	}
	
}
