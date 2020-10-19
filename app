//https://docs.expo.io/
import * as React from 'react';
import { Button, View, Text, TextInput, StyleSheet, TouchableOpacity } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import * as SQLite from 'expo-sqlite';
import {Picker} from '@react-native-community/picker';
//import {img} from './send_image';

// You can import from local files
import Home from './views/home';
import Corn from './views/corn';
import Cotton from './views/cotton';
import Cafe from './views/cafe';

const Stack = createStackNavigator();


function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Home">
       <Stack.Screen name="Home" component={Home} />
       <Stack.Screen name="Corn" component={Corn} />
       <Stack.Screen name="Cotton" component={Cotton} />
       <Stack.Screen name="Cafe" component={Cafe} />
      </Stack.Navigator>

    </NavigationContainer>
          
    
  );
}

export default App;





//views home
import * as React from 'react';
import { Button, View, Text, TextInput, StyleSheet, TouchableOpacity } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import * as SQLite from 'expo-sqlite';
import {Picker} from '@react-native-community/picker';
//import {img} from './send_image';

// You can import from local files
import Corn from './corn';
import Cotton from './cotton';
import Cafe from './cafe';




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
    
    
  }
  

  

});

export default Home;





//views caffe
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




function Cafe({ navigation }) {
  return (
   
    <View style={styles.container}>
      
      <Text style={styles.text_title}>You are in Cafe</Text>
      <Text style={styles.text}>Input your ID:</Text>
      <TextInput style={styles.text_input} id='cafe_id'></TextInput>
      <Text style={styles.text}>Input value por kg:</Text>
      <TextInput  style={styles.text_input} id='cafe_kg'></TextInput>
      
      <TouchableOpacity  style={styles.botao}  onPress={() => alert('send price Cafe')}>
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

export default Cafe;





//package json
{
  "dependencies": {
    "jest": "^26.4.2",
    "eslint": "^5.16.0",
    "lodash": "^4.17.19",
    "prettier": "^1.18.2",
    "jest-expo": "^36.0.0",
    "babel-jest": "^26.3.0",
    "@babel/core": "^7.0.0",
    "@types/jest": "^26.0.14",
    "expo-sqlite": "8.4.0",
    "babel-eslint": "^10.0.2",
    "react-native-svg": "9.13.3",
    "babel-preset-expo": "^8.0.0",
    "eslint-plugin-react": "^7.14.3",
    "react-native-screens": "^2.0.0",
    "eslint-config-prettier": "^6.0.0",
    "eslint-plugin-flowtype": "^3.12.1",
    "eslint-plugin-jsx-a11y": "^6.2.3",
    "eslint-plugin-prettier": "^3.1.0",
    "@react-navigation/stack": "5.9.2",
    "@react-navigation/native": "5.7.5",
    "react-native-multi-selectbox": "^1.2.4",
    "@react-native-community/picker": "1.8.0",
    "react-native-safe-area-context": "^0.6.0",
    "@commitlint/config-conventional": "^11.0.0",
    "metro-react-native-babel-preset": "^0.63.0",
    "@react-native-community/masked-view": "^0.1.0",
    "babel-plugin-transform-remove-console": "^6.9.4"
  }
}
