package com.ecommerce.app.service.impl;

import com.ecommerce.app.service.AwsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Service
@Slf4j
public class AwsServiceImpl implements AwsService {

    //    private final AmazonS3 amazonS3;

//    @Value("${aws.s3.bucket}")
//    private String bucketName;

//    @Autowired
//    public AwsServiceImpl(AmazonS3 amazonS3) {
//        this.amazonS3 = amazonS3;
//    }

    @Override
    // @Async annotation ensures that the method is executed in a different background thread
    // but not consume the main thread.
    public String uploadFile(final MultipartFile multipartFile, String fileName) throws Exception {
        String resourceUrl = "";
//        log.info("File upload in progress.");
//        try {
//            final File file = convertMultiPartFileToFile(multipartFile);
//            resourceUrl = uploadFileToS3Bucket(bucketName, file, fileName);
//            log.info("File upload is completed.");
//            file.delete();    // To remove the file locally created in the project folder.
//        } catch (final AmazonServiceException ex) {
//            log.info("File upload is failed.");
//            log.error("Error= {} while uploading file.", ex.getMessage());
//            throw new Exception("File upload is failed. Error {} while uploading file." + ex.getMessage());
//        }
        return resourceUrl;
    }


    private File convertMultiPartFileToFile(final MultipartFile multipartFile) {
        final File file = new File(multipartFile.getOriginalFilename());
        try (final FileOutputStream outputStream = new FileOutputStream(file)) {
            outputStream.write(multipartFile.getBytes());
        } catch (final IOException ex) {
            log.error("Error converting the multi-part file to file= ", ex.getMessage());
        }
        return file;
    }

//    private String uploadFileToS3Bucket(final String bucketName, final File file, final String fileName) {
//        log.info("Uploading file with name= " + fileName);
//        final PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName, fileName /*+ ".jpg"*/, file)
//                .withCannedAcl(CannedAccessControlList.PublicRead);
//        amazonS3.putObject(putObjectRequest);
//        return String.valueOf(amazonS3.getUrl(
//                bucketName, //The S3 Bucket To Upload To
//                fileName /*+ ".jpg"*/));
//    }
}
