/**
 * Sample Skeleton for 'MainWindow.fxml' Controller Class
 */

package appInterface;

import model.DataHandler;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Modality;
import javafx.stage.Stage;
import model.Diagnostic;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MainWindowController {
    
    public List<PersonMidia> relations = new ArrayList<>();
    public ObservableList<Midia> observablePersonMidia;
    private DataHandler dh;
    
    @FXML // ResourceBundle that was given to the FXMLLoader
    private ResourceBundle resources;

    @FXML // URL location of the FXML file that was given to the FXMLLoader
    private URL location;

    @FXML
    private TableView<PersonMidia> tableView;

    @FXML
    private TableColumn<PersonMidia, Integer> midiaTitleCol;

    @FXML
    private TableColumn<PersonMidia, String> personNameCol;

    @FXML
    private TableColumn<PersonMidia, Integer> personRoleCol;
    
    @FXML
    private Button updateTableButton;

    @FXML
    private Button addRegistryButton;

    @FXML
    private Button removeRegistryButton;

    @FXML
    private Button updateRegistryButton;
    
    @FXML
    private AnchorPane mainPane;
    
    public void updateTableView(){
        tableView.refresh();
    }
    
    public void getPersonMidia(){
        
        ResultSet rset = null;
        try {
            rset = dh.getPersonMidia();
        } catch (SQLException ex) {
            return;
        }
        
        try {
            while(rset.next()){
                observablePersonMidia.add(new Midia(rset.getString("Titulo"),rset.getString("Tipo"),rset.getString("Thumbnail"), rset.getData("Lancamento"), rset.getInt("Duracao"), rset.getString("Sinopse"), rset.getInt("Classificacao")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(MainWindowController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

    // BUGUEI
    public void prepareTableView(){
        
        observablePersonMidia = FXCollections.observableArrayList(midia);
        
        midiaTitleCol.setCellValueFactory(
                new PropertyValueFactory<>("title")
        );
        
        personNameCol.setCellValueFactory(
                new PropertyValueFactory<>("name")
        );
        
        personRoleCol.setCellValueFactory(
                new PropertyValueFactory<>("fk")
        );
        
        tableView.setItems(observablePersonMidia);
    }
    
    @FXML
    void updateTable() {
        observablePersonMidia.clear();
        
        getPersonMidia();
        updateTableView();
    }
    
    @FXML
    void insertInTable() throws IOException, SQLException {
        
        Parent root;
        
        FXMLLoader editLoader = new FXMLLoader(getClass().getResource("fxml/EditWindow.fxml"));
        
        root = (Parent)editLoader.load();
        Stage stage = new Stage();
        stage.initModality(Modality.WINDOW_MODAL);
        stage.initOwner(mainPane.getScene().getWindow());
        stage.setTitle("Adicionar novo Registro");
        stage.setScene(new Scene(root));
        
        EditWindowController editController = editLoader.<EditWindowController>getController();
        editController.setValues(null, this, observablePersonMidia, dh);
        
        stage.show();
    }
    
    @FXML
    void removeTableSelection() throws SQLException{
        PersonMidia current = tableView.getSelectionModel().getSelectedItem();
        
        dh.deletePersonMidia(current.getTitle(), current.getName());
        
        observableRelations.remove(current);
    }
    
    @FXML
    void editSelectedRow() throws IOException, SQLException{
        
        Diagnostic current = tableView.getSelectionModel().getSelectedItem();
        
        if(current == null) return;
        
        Parent root;
        
        FXMLLoader editLoader = new FXMLLoader(getClass().getResource("fxml/EditWindow.fxml"));
        
        root = (Parent)editLoader.load();
        Stage stage = new Stage();
        stage.initModality(Modality.WINDOW_MODAL);
        stage.initOwner(mainPane.getScene().getWindow());
        stage.setTitle("Editar Registro");
        stage.setScene(new Scene(root));

        
        EditWindowController editController = editLoader.<EditWindowController>getController();
        editController.setValues(current, this, null,  dh);
        
        stage.show();
    }

    @FXML // This method is called by the FXMLLoader when initialization is complete
    void initialize() throws IOException, SQLException {
        
        this.relations = new ArrayList<>();
        
        dh = new DataHandler();
        dh.getDBConnection();
        
        //prepara a tabela para exibir os dados de observableRelations
        prepareTableView();
        
        //gerar dados para as tabelas
        getPersonMidia();

        
    }
}


/*      String role = actor ? "T" : "F";
        role += ", ";
        role += director ? "T" : "F";*/