public void setup()  //to do, fix comma issue with whole passages
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  String lowellHymn = new String("With heads bared we stand, In tribute to thee, Our Alma-Mater Lowell, All true to thee we'll be. Unfurled red and white, None shall thee decry, They name we love, Oh Lowell High.");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
 ArrayList<String> coolHymn = convertToWords(lowellHymn);
 for(int i = 0; i < coolHymn.size(); i++){
   System.out.print(coolHymn.get(i) + " ");
 }
 
 
 System.out.println();
 System.out.println(coolHymn.size());
 
 
 for(int i = 0; i < coolHymn.size(); i++){
   coolHymn.set(i,(pigLatin(coolHymn.get(i))));
 }
 for(int i = 0; i < coolHymn.size(); i++){
   System.out.print(coolHymn.get(i) + " ");
 }
}
public void draw()
{
        //not used
}
public String[] vowels = {"a","e","i","o","u"};
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i = 0; i < sWord.length(); i++){
    for (int g = 0; g < vowels.length; g++){
      if(sWord.substring(i,i+1).equals(vowels[g])) return i;
    }
    
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
 int temp = findFirstVowel(sWord);
 //System.out.println(temp);
  if(temp == -1) // no vowels
  {
    return sWord + "ay";
  }
  if(temp == 0){ //vowel is first letter
      return sWord+"way";
    }
  if(temp>0){ // start with vowel, then add starting consonants and then "ay"
    return sWord.substring(temp)+sWord.substring(0,temp)+"ay";
  }
    return "ERROR!";
  
}
public ArrayList<String> convertToWords(String passage){
  
 ArrayList<String> passageWords = new ArrayList<String>();
 String temp = new String();
  for(int i = 0; i < passage.length(); i++){
    
    if(!(passage.charAt(i) == ' ')){
      temp = temp+passage.substring(i,i+1);
    }else{
      passageWords.add(temp);
      temp = "";
    }
    
  }
  
  return passageWords;
}
