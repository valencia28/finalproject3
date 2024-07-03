package upload;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyPathConfig implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// registry: url-폴더매핑 장소를 저장한 저장소
		// http://localhost:9090/upload/**
		registry.addResourceHandler("/upload/**")
		//.addResourceLocations("file:///c:/fullstack/upload/");
		.addResourceLocations(UploadInform.uploadLocation);
	}
	
}
