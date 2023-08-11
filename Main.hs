module Main where

import Control.Concurrent (threadDelay)
import Data.List
import GHC (GhcException (ProgramError))
import System.Random

numberToChar :: Int -> String
numberToChar 1 = "Ryu Ramen Co"
numberToChar 2 = "Goilla Butter Chicken"
numberToChar 3 = "Natraj Chole Bhatore"
numberToChar 4 = "Shyam ji's chole Bhature"
numberToChar 5 = "Ryu Ramen Co"
numberToChar 6 = "Luis Burger"
numberToChar 7 = "KFC"
numberToChar _ = "Invalid number"

countdown :: Int -> IO ()
countdown n
  | n <= 0 = putStrLn "\n\n Let's Go!...\n"
  | otherwise = do
      print n
      threadDelay 1000000 -- Pause for 1 second (1,000,000 microseconds)
      countdown (n - 1)

randomNumber :: IO Int
randomNumber = randomRIO (1, 5)

main :: IO ()
main = do
  number <- randomNumber
  -- putStrLn $ "Random number between 1 and 4 is: " ++ show number
  putStrLn "Restaurant selection Starting..."
  countdown 5
  putStrLn $ "\n\n Today's Restaurant 🍽️ : -> " ++ numberToChar number
  putStrLn "\n\n"
