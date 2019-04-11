import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class VICOperationsTest {
    @Test
    void noCarryTest() {
        assertEquals("15", VICOperations.noCarryAddition("7", "18"));
    }

    @Test
    void chainAdditionTest() {
        assertEquals("76238513" , VICOperations.chainAddition("762", 8));
        assertEquals("77415", VICOperations.chainAddition("7", 5));
        assertEquals("54", VICOperations.chainAddition("54321", 2));
    }

    @Test
    void digitPermutaionTest() {
        assertEquals("4071826395", VICOperations.digitPermutation("BANANALAND"));
    }

    @Test
    void straddlingCheckerboard() {
        List<String> expected = Arrays.asList(
                "4",
                "04",
                "00",
                "07",
                "5",
                "01",
                "08",
                "3",
                "1",
                "02",
                "06",
                "03",
                "09",
                "8",
                "9",
                "05",
                "24",
                "20",
                "6",
                "7",
                "27",
                "21",
                "28",
                "22",
                "26",
                "23"
        );
        assertEquals(expected, VICOperations.straddlingCheckerboard("4071826395", "A TIN SHOE"));
    }
}