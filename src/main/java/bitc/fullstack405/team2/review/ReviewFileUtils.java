package bitc.fullstack405.team2.review;

import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Component
public class ReviewFileUtils {

    public String parseFileInfo(MultipartFile uploadFile) throws Exception {

        // 업로드된 파일정보가 있는지 확인
        if (ObjectUtils.isEmpty(uploadFile)) {
            // 업로드된 파일 정보가 없으면 null 반환, 첨부파일이 없는 게시물이라는 뜻
            return null;
        }

        String path = "C:/fullstack405/reviewImg/";

        // File 클래스를 통해서 파일 객체 생성, 위에서 생성한 파일이 저장될 폴더를 가지고 File 클래스 객체 생성
        File file = new File(path);

        // 위에서 지정한 경로가 실제로 존재하는지 여부 확인
        if (file.exists() == false) {
            // 위에서 지정한 경로가 없을 경우 해당 폴더를 생성
            file.mkdirs();
        }

        String originalFilename = uploadFile.getOriginalFilename();
        String originalFileExt = originalFilename.substring(originalFilename.lastIndexOf(".")); // 파일 타입 저장

        // 현재 시간을 기준으로 파일의 새 이름을 생성함
        String newFileName = System.nanoTime() + originalFileExt;

        // 파일 저장 기본 경로와 새 파일명을 합하여 File 클래스 타입의 객체를 생성
        file = new File(path + newFileName);

        // 서버의 디스크에 파일 저장
        uploadFile.transferTo(file);

        // 새 파일 이름 반환
        return newFileName;
    }
}
