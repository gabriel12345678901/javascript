//https://docs.expo.io/
import * as React from 'react';
import { Button, View, Text, TextInput, StyleSheet, TouchableOpacity } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import * as SQLite from 'expo-sqlite';
import {Picker} from '@react-native-community/picker';
//import {img} from './send_image';

// You can import from local files
import Corn from './components/corn';
import Cotton from './components/cotton';
import Cafe from './components/cafe';


function Home({navigation}) {

  return (
    
   
    <View style={styles.container}>
      <Text style={styles.text_title}>System price Commodities: </Text>

 
      <Text style={styles.text}>I am productor of the Corn: </Text>
      <TouchableOpacity  style={styles.botao}  
        onPress={() => navigation.navigate(Corn)}
       >
        <Text style={styles.text_button}>Corn</Text>
      </TouchableOpacity>

      <Text style={styles.text}>I am productor of the Cotton: </Text>
       <TouchableOpacity  style={styles.botao}  onPress={() => navigation.navigate(Cotton)}>
        <Text style={styles.text_button}>Cotton</Text>
      </TouchableOpacity>

      <Text style={styles.text}>I am productor of the Cafe: </Text>
       <TouchableOpacity  style={styles.botao}  onPress={() => navigation.navigate(Cafe)}>
        <Text style={styles.text_button}>Cafe</Text>
      </TouchableOpacity>
    </View>
  );
}



const Stack = createStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Home">
      <Stack.Screen name="Home" component={Home} />
        <Stack.Screen name="Cotton" component={Cotton} />
        <Stack.Screen name="Corn" component={Corn} />
        <Stack.Screen name="Cafe" component={Cafe} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}



const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  botao: {
    backgroundColor: "blue",
    padding: 20,
    borderRadius: 5,
    width: 200,
    height: 50
    
    
  },

  text_button: {
    color: 'white',
    textAlign: 'center',
    fontSize:17,
    paddingVertical:0.1,
    
    
  },
  text: {
    color: 'black',
    textAlign: 'center',
    fontSize:17,
    paddingBottom:8,
    paddingTop:20,
    
    
  },
  text_title: {
    color: 'black',
    textAlign: 'center',
    fontSize:25,
    paddingBottom:8,
    paddingTop:20,
    
    
  },
  text_input: {
    borderColor: 'gray',
    borderWidth: 2,
    borderRadius:10,
    marginBottom:15,
    height:53
    
    
    
  },

  picker:{
    height: 30,
    width: 200,
    marginBottom:15
  }

  

});

export default App;


//other directory, screen 2
import * as React from 'react';
import { Button, View, Text, TextInput, StyleSheet, TouchableOpacity } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import * as SQLite from 'expo-sqlite';
import {Picker} from '@react-native-community/picker';
//import {img} from './send_image';

const db = SQLite.openDatabase("https://sqliteonline.com/demo");
var vs = db.version
db.transaction(tx =>{
  tx.executeSql("INSERT INTO demo (name, hint) VALUES ('teste', 3021);", error => {
    if(error){alert('error connection with db')}
    else{alert('success')}
    

  })
})




function Cotton({ navigation }) {
 
  return (
    <View style={styles.container}>
      
      <Text style={styles.text_title}>You are in Cotton</Text>
      <Text style={styles.text}>Input your ID:</Text>
      <TextInput  style={styles.text_input} id='cotton_id'></TextInput>
      <Text style={styles.text}>Input value por kg:</Text>
      <TextInput  style={styles.text_input} id='cotton_kg'></TextInput>
      <TouchableOpacity  style={styles.botao}  onPress={() =>
       alert('version: '+vs+' select: '+db.transaction(tx => {
         tx.executeSql('SELECT * from cliente where status = ativo')
       }))
        
       }>
        <Text style={styles.text_button}>Send value</Text>
      </TouchableOpacity>

      <Text style={styles.text}>Go to Home</Text>
     <TouchableOpacity  style={styles.botao}  onPress={() => navigation.navigate('Home')}>
        <Text style={styles.text_button}>Home</Text>
      </TouchableOpacity>
      
     
    </View>
  );
}




const Stack = createStackNavigator();







const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  botao: {
    backgroundColor: "blue",
    padding: 20,
    borderRadius: 5,
    width: 200,
    height: 50
    
    
  },

  text_button: {
    color: 'white',
    textAlign: 'center',
    fontSize:17,
    paddingVertical:0.1,
    
    
  },
  text: {
    color: 'black',
    textAlign: 'center',
    fontSize:17,
    paddingBottom:8,
    paddingTop:20,
    
    
  },
  text_title: {
    color: 'black',
    textAlign: 'center',
    fontSize:25,
    paddingBottom:8,
    paddingTop:20,
    
    
  },
  text_input: {
    borderColor: 'gray',
    borderWidth: 2,
    borderRadius:10,
    marginBottom:15,
    height:53
    
    
    
  }

 

  

});

export default Cotton;








