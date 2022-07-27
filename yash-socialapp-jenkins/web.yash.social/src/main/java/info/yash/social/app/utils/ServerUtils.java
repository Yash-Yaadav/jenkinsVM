package info.yash.social.app.utils;

import info.yash.social.app.dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import java.nio.file.Path;
import java.nio.file.Paths;

import static info.yash.social.app.constants.Constants.PROFILE_IMAGES;

public class ServerUtils {

    public static UserDTO getUserFromSession(HttpServletRequest request){
        return (UserDTO) request.getSession().getAttribute("user");
    }

    public static Path getProfileImagesPath() {
        return Paths.get(".").resolve(PROFILE_IMAGES);
    }
}
