from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.remote.webelement import WebElement
from selenium.webdriver.remote.webdriver import WebDriver
from selenium.common.exceptions import NoSuchElementException
import sys
import os
import typing as t
import pydevd_pycharm
from os.path import exists
import sys

urls = [ "https://www.w3.org" ]

def get_web_driver() -> WebDriver:
    options = Options()
    options.headless = False
    driver = webdriver.Firefox( options = options )  # , executable_path=r'C:\Utility\BrowserDrivers\geckodriver.exe')
    driver.set_page_load_timeout( 300 )
    return driver

def open_tabs( driver:WebDriver ):
      for x in range( 0, len( urls ) + 1 ):
            driver.execute_script("window.open('')")

if __name__ == '__main__':
      driver = get_web_driver()
      driver.get( "https://www.w3.org/" )
      
      open_tabs( driver )

      handles = driver.window_handles

      driver.switch_to_window( handles[ 0 ] )

      i = 0
      for url in urls:
            url = urls[ i ]
            driver.switch_to_window( handles[ i ] )
            driver.get( url )
            i = i + 1
