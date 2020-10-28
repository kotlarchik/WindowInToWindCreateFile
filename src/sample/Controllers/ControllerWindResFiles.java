package sample.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.CheckBox;
import javafx.scene.control.TextField;
import javafx.stage.DirectoryChooser;
import javafx.stage.Stage;
import sample.ConnectionUtil;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ControllerWindResFiles {
    Connection connection;
    public ControllerWindResFiles(){
        connection = ConnectionUtil.connectionDB();
    }
    String nameFile = "";

    @FXML
    private TextField txtPath;

    ArrayList <String> arrayList = new ArrayList<>();

    @FXML
    private void pressSelect(ActionEvent event){
        DirectoryChooser directoryChooser = new DirectoryChooser();
        directoryChooser.setTitle("Выберите путь сохранения");
        File dir = directoryChooser.showDialog(new Stage());
        if (!(dir == null)){
            txtPath.setText(dir.getAbsolutePath());
        }
    }
    @FXML
    private void checkCourses(ActionEvent event) throws SQLException {
        nameFile = ((CheckBox)event.getSource()).getText();
        String Select = "SELECT * FROM courses";

        PreparedStatement statement = connection.prepareStatement(Select);
        ResultSet result = statement.executeQuery();

        while (result.next()){
            arrayList.add(result.getString("id"));
            arrayList.add(result.getString("title"));
            arrayList.add(result.getString("length"));
            arrayList.add(result.getString("description"));
        }
    }
    @FXML
    private void checkLesson(){}
    @FXML
    private void checkTeachers(){}
    @FXML
    private void checkUsers(){}
    @FXML
    private void pressDone() throws IOException {
        File file = new File(txtPath.getText() + "/" + nameFile + ".txt");
        file.createNewFile();
        FileWriter wf = new FileWriter(file);
        wf.write(arrayList.toString());
        wf.close();
    }
}