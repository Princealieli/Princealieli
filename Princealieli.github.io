- 👋 Hi, I’m @Princealieli
- 👀 I’m interested in ...
- 🌱 I’m currently learning ...
- 💞️ I’m looking to collaborate on ...
- 📫 How to reach me ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...

<!---
Princealieli/Princealieli is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
public class ArrayProcessing {
    public static void main(String[] args) {
        int[] sortedArray = generateSortedArray(1000000);
        int[] unsortedArray = generateUnsortedArray(1000000);

        long startTime = System.nanoTime();
        int sortedSum = sumPositiveNumbers(sortedArray);
        long sortedDuration = System.nanoTime() - startTime;

        startTime = System.nanoTime();
        int unsortedSum = sumPositiveNumbers(unsortedArray);
        long unsortedDuration = System.nanoTime() - startTime;

        System.out.println("Sorted array sum: " + sortedSum + ", Time: " + sortedDuration + " ns");
        System.out.println("Unsorted array sum: " + unsortedSum + ", Time: " + unsortedDuration + " ns");
    }

    private static int[] generateSortedArray(int size) {
        int[] array = new int[size];
        for (int i = 0; i < size; i++) {
            array[i] = i - size / 2;
        }
        return array;
    }

    private static int[] generateUnsortedArray(int size) {
        int[] array = generateSortedArray(size);
        shuffleArray(array);
        return array;
    }

    private static void shuffleArray(int[] array) {
        Random rnd = new Random();
        for (int i = array.length - 1; i > 0; i--) {
            int index = rnd.nextInt(i + 1);
            int a = array[index];
            array[index] = array[i];
            array[i] = a;
        }
    }

    private static int sumPositiveNumbers(int[] array) {
        int sum = 0;
        for (int value : array) {
            if (value > 0) {
                sum += value;
            }
        }
        return sum;
    }
}
