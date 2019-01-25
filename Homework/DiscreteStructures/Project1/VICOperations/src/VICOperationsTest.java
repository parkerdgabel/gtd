import org.junit.jupiter.api.Test;

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

    }
}