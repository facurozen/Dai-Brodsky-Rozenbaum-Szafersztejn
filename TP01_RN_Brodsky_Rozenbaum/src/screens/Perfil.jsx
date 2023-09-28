import React, { useEffect, useState } from 'react';
import { View, Text, TextInput, Button, TouchableOpacity, StyleSheet } from 'react-native';

export default function Perfil({ route }) {
  const { user,setUser } = route.params;
  const [isEditing, setIsEditing] = useState(false);
  const [editedUser, setEditedUser] = useState({ ...user });
  const [showPassword, setShowPassword] = useState(false);

  useEffect(()=>{
    console.log(user);
  })
  const handleEditClick = () => {
    setIsEditing(true);
  };

  const handleSaveClick = () => {
    setUser(editedUser);
    // Aquí puedes agregar lógica para guardar los cambios en el perfil
    // Por ejemplo, hacer una solicitud a tu API para actualizar el perfil
    // y luego actualizar el estado o mostrar un mensaje de éxito.

    // Después de guardar, puedes cambiar de nuevo a la visualización
    setIsEditing(false);
  };

  const handleInputChange = (field, value) => {
    // Actualiza el objeto editedUser cuando se cambia un campo
    setEditedUser({
      ...editedUser,
      [field]: value,
    });
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Perfil</Text>
      {isEditing ? (
        // Modo de edición: muestra un formulario editable
        <View>
          <TextInput
            style={styles.input}
            placeholder="Nombre"
            value={editedUser.Nombre}
            onChangeText={(text) => handleInputChange('Nombre', text)}
          />
          <TextInput
            style={styles.input}
            placeholder="Apellido"
            value={editedUser.Apellido}
            onChangeText={(text) => handleInputChange('Apellido', text)}
          />
          <TextInput
            style={styles.input}
            placeholder="Usuario"
            value={editedUser.Usuario}
            onChangeText={(text) => handleInputChange('Usuario', text)}
          />
          <TextInput
            style={styles.input}
            placeholder="Contraseña"
            value={editedUser.Password}
            onChangeText={(text) => handleInputChange('Password', text)}
            secureTextEntry={!showPassword} // Esto ocultará la contraseña si showPassword es false
          />

          <Button title="Guardar" onPress={handleSaveClick} />
        </View>
      ) : (
        // Modo de visualización: muestra los datos del usuario
        <View>
          <Text>Nombre: {user.Nombre}</Text>
          <Text>Apellido: {user.Apellido}</Text>
          <Text>Usuario: {user.Usuario}</Text>
          <Text>Contraseña: {showPassword ? user.Password : '••••••••••'}</Text>
          <TouchableOpacity
            style={styles.toggleButton}
            onPress={() => setShowPassword(!showPassword)}>
            <Text style={styles.toggleButtonText}>
              {showPassword ? 'Ocultar Contraseña' : 'Mostrar Contraseña'}
            </Text>
          </TouchableOpacity>

          <Button title="Editar" onPress={handleEditClick} />
        </View>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 24,
    backgroundColor: '#fff',
  },
  header: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 16,
    textAlign: 'center',
  },
  input: {
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 4,
    padding: 8,
    marginBottom: 16,
  },
  toggleButton: {
    marginTop: 16,
    alignItems: 'center',
  },
  toggleButtonText: {
    color: 'blue',
    textDecorationLine: 'underline',
  },
});