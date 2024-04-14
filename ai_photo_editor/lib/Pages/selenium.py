from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys

import time

# Replace with the actual URL you want to visit
url = "https://web.telegram.org/"  # Replace with the actual URL

# Create a WebDriver instance
driver = webdriver.Chrome()  # Replace with your preferred driver

# Visit the URL
driver.get(url)

# Interact with elements based on their text, class, and CSS selectors
try:
   # Wait for the page to load
   WebDriverWait(driver, 20).until(
       EC.presence_of_element_located((By.CLASS_NAME, "fullName"))
   )

   # Click on the h3 with 'fullName' class and specified text
   hot_wallet_h3 = driver.find_element(By.XPATH, "//h3[@class='fullName' and text()='NEAR Wallet - mine HOT']")
   hot_wallet_h3.click()

   # Wait briefly
   time.sleep(5)

   # Click on the "Open Wallet" span
   open_wallet_span = driver.find_element(By.XPATH, "//span[@class='inline-button-text' and starts-with(., 'Open Wallet')]")
   open_wallet_span.click()

   # Wait briefly
   time.sleep(5)

   # Click on the login button with specific text within a p tag
   login_button = driver.find_element(By.XPATH, "//button[.//p[text()='Log in']]")
   login_button.click()

   # Find the textarea using a CSS selector
   textarea = driver.find_element(By.CSS_SELECTOR, "label textarea")

   # Write text into the textarea
   textarea.send_keys("manual response delay lava poet online pupil army cotton life diary bar")

   # Click on the button with "Continue" text
   continue_button = driver.find_element(By.XPATH, "//button[text()='Continue']")
   continue_button.click()

   # Wait 30 seconds
   time.sleep(30)

   # Click on the button with "Select account" text
   select_account_button = driver.find_element(By.XPATH, "//button[text()='Select account']")
   select_account_button.click()

   # Wait 30 seconds
   time.sleep(30)

except Exception as e:
   print("An error occurred:", e)

finally:
   # Close the WebDriver instance
   driver.quit()
