import React from 'react';
import logo from './logo.svg';
import './App.css';
import { TabPanel, useTabs } from './TabIndex';
import { TabSelector } from './TabSelector';

function App() {

  const [selectedTab, setSelectedTab] = useTabs([
    'Login',
    'Profile',
  ]);

  return (

    <>
      <nav className="flex border-b border-gray-300">
        <TabSelector
          isActive={selectedTab === 'Login'}
          onClick={() => setSelectedTab('Login')}
        >
          Login
        </TabSelector>
        <TabSelector
          isActive={selectedTab === 'Profile'}
          onClick={() => setSelectedTab('Profile')}
        >
          Profile
        </TabSelector>
      </nav>
      <div className="p-4">
        <TabPanel hidden={selectedTab !== 'Login'}>Login</TabPanel>
        <TabPanel hidden={selectedTab !== 'Profile'}>Profile</TabPanel>
      </div>
    </>
  );
}

export default App;
