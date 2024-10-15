package com.assignment.caulong.service;

import java.io.File;
import java.util.Arrays;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@Service
public class UploadService {

	@Autowired
	Cloudinary cloudinary;

	public String uploadFileToCloudinary(File file) {
		try {
			Map uploadResult = cloudinary.uploader().upload(file, ObjectUtils.asMap("resource_type", "image"));

			return (String) uploadResult.get("url");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String uploadMultipartFileToCloudinary(MultipartFile file) {
		try {
			if(file.isEmpty())
				return null;
			
			File imageFile = new File(System.getProperty("java.io.tmpdir") + "/" + file.getOriginalFilename());
			imageFile.createNewFile();
			file.transferTo(imageFile);
			
			String imageUrl = uploadFileToCloudinary(imageFile);
			imageFile.delete();
			
			return imageUrl;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String getImage(String publicId) {
		return cloudinary.url().generate(publicId);
	}
	
	
	public void delete(String... publicId) throws Exception {
		cloudinary.api().deleteResources(Arrays.asList(publicId), ObjectUtils.asMap("type", "upload", "resource_type", "image"));
	}
	
}
