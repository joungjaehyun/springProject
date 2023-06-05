import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.Socket;

public class ClientEx2 {

    // bad code
    public static void main(String[] args) throws Exception {

        Socket socket = new Socket("192.168.0.49",8080);

        InputStream in = socket.getInputStream();
        // 동시에 시작하면 순차적으로 데이터를 받는다.
        FileOutputStream fos = new FileOutputStream("C:\\zzz\\server.jpg");

        while (true){
            int data = in.read();


            if (data ==-1){break;}

            fos.write(data);
        } // end while

        in.close();
        fos.close();
        socket.close();
    }
}
