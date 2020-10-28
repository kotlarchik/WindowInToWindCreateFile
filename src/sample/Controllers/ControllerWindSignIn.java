package sample.Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import sample.ConnectionUtil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ControllerWindSignIn {
    Connection connection;
    public ControllerWindSignIn() {
        connection = ConnectionUtil.connectionDB();
    }

    @FXML
    private TextField txtLogin;
    @FXML
    private PasswordField txtPass;
    @FXML
    private Button buttonIn1ToWind2;
    @FXML
    private Label txtStatusSignIn;
    String login;
    String password;

    @FXML
    public void pressIn(ActionEvent event) throws SQLException {
        String sign = "SELECT login, password FROM users WHERE login=? and password=?";

        PreparedStatement statement = connection.prepareStatement(sign);
        statement.setString(1, txtLogin.getText());
        statement.setString(2, txtPass.getText());
        ResultSet result = statement.executeQuery();

        while (result.next()){
            login = result.getString("login");
            password = result.getString("password");
        }
        if (txtLogin.getText().equals(login) && txtPass.getText().equals(password)){
            txtStatusSignIn.setText("Successfully");
            buttonIn1ToWind2.setOnAction(event1 -> {
                buttonIn1ToWind2.getScene().getWindow().hide();

                Parent root = null;

                try {
                    root = FXMLLoader.load(getClass().getResource("/sample/FXML/WindowResFiles.fxml"));
                } catch (IOException e) {
                    e.printStackTrace();
                }
                Stage stage = new Stage();
                stage.setTitle("Registration, please.");
                assert root != null;
                stage.setScene(new Scene(root));
                stage.showAndWait();
            });
        }
    }
}