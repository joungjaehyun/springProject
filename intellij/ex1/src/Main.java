import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

public class Main {

    // bad code
    // 느려서 실제로는 못쓴다.
    // 입출력의 성능 향상을위해 입출력의 횟수를 줄여야한다. EX DB의 where 문 쓰는 이유.

    public static void main(String[] args) throws Exception {

        URL url = new URL("https://img.megabox.co.kr/SharedImg/2023/06/01/IkRZmlSpR5iDXq6qJizktYQGhpRHmihs_420.jpg");

        InputStream fin = url.openStream();
        // 1단계 - 빨대 준비

        //FileInputStream fin = new FileInputStream(("C:\\zzz\\test.jpg"));

        System.out.println(fin);

        FileOutputStream fos = new FileOutputStream("C:\\zzz\\copy.jpg");

        // 2단계 읽고 쓰기

        while(true){
            // 읽으면 1바이트가 나온다
            int data = fin.read();

            if (data == -1 ){
                break;
            }
            fos.write(data);
        }// end while
    }
}