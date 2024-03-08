package thanhphuc.java6.utils;

import java.security.SecureRandom;
import java.util.Random;

public class RamDomNameUtils {

	private static final String CHARACTERS = "abcdefghijklmnopqrstuvwxyz";

	private static final int NAME_LENGTH = 8; 

	private static final Random random = new SecureRandom();

	public static String generateRandomName() {
		StringBuilder name = new StringBuilder(NAME_LENGTH);

		for (int i = 0; i < NAME_LENGTH; i++) {
			int randomIndex = random.nextInt(CHARACTERS.length());
			char randomChar = CHARACTERS.charAt(randomIndex);
			name.append(randomChar);
		}

		return name.toString();
	}

}
