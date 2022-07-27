package info.yash.social.app.converters;

import info.yash.social.app.constants.Gender;
import info.yash.social.app.dto.UserDTO;
import info.yash.social.app.entities.User;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import static info.yash.social.app.constants.Constants.ROLE_ADMIN;

@Component
public class UserToUserDtoConverter implements Converter<User, UserDTO> {

    @Override
    public UserDTO convert(User user) {
        if (user == null)
            return null;

        return UserDTO.builder()
                      .id(user.getId())
                      .email(user.getEmail())
                      .password(user.getPassword())
                      .firstName(user.getFirstName())
                      .lastName(user.getLastName())
                      .phone(user.getPhone())
                      .sex(Gender.getGenderById(user.getSex()).name())
                      .isAdmin(user.getRoles().stream().anyMatch(r -> r.getName().equals(ROLE_ADMIN)))
                      .image(user.getImage())
                      .dob(user.getDob())
                      .build();
    }
}
