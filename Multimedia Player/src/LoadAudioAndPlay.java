import java.applet.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;


public class LoadAudioAndPlay extends JApplet {
   private AudioClip sound1, sound2, sound3, sound4, sound5, sound6, sound7, sound8, sound9, sound10, sound11, currentSound;
   private JButton playSound, loopSound, stopSound;
   private JComboBox chooseSound;

   // load the image when the applet begins executing
   public void init()
   {
      Container c = getContentPane();
      c.setLayout( new FlowLayout() );

      String choices[] = { "Welcome", "Hi", "Xyz", "Dog Howling", "Applause", "Gun Battle", "Thunder", "Awp(Sniper)", "Stepping", "Situation Under Control", "Welcome to VCE"};
      chooseSound = new JComboBox( choices );
      chooseSound.addItemListener(
         new ItemListener() {
            public void itemStateChanged( ItemEvent e )
            {
               currentSound.stop();

               if(chooseSound.getSelectedIndex() == 0)
               {
            	   currentSound = sound1;
               }
               
               else if(chooseSound.getSelectedIndex() == 1)
               {
            	   currentSound = sound2;
               }
               
               else if(chooseSound.getSelectedIndex() == 2)
               {
            	   currentSound = sound3;
               }
               
               else if(chooseSound.getSelectedIndex() == 3)
               {
            	   currentSound = sound4;
               }
               
               else if(chooseSound.getSelectedIndex() == 4)
               {
            	   currentSound = sound5;
               }
               
               else if(chooseSound.getSelectedIndex() == 5)
               {
            	   currentSound = sound6;
               }
               
               else if(chooseSound.getSelectedIndex() == 6)
               {
            	   currentSound = sound7;
               }
               
               else if(chooseSound.getSelectedIndex() == 7)
               {
            	   currentSound = sound8;
               }
               
               else if(chooseSound.getSelectedIndex() == 8)
               {
            	   currentSound = sound9;
               }
               
               else if(chooseSound.getSelectedIndex() == 9)
               {
            	   currentSound = sound10;
               }
               
               else if(chooseSound.getSelectedIndex() == 10)
               {
            	   currentSound = sound11;
               }
            }
         }
      );
      c.add( chooseSound );

      ButtonHandler handler = new ButtonHandler();
      playSound = new JButton( "Play" );
      playSound.addActionListener( handler );
      c.add( playSound );
      loopSound = new JButton( "Loop" );
      loopSound.addActionListener( handler );
      c.add( loopSound );
      stopSound = new JButton( "Stop" );
      stopSound.addActionListener( handler );
      c.add( stopSound );

      sound1 = getAudioClip(
                 getDocumentBase(), "welcome.wav" );
      sound2 = getAudioClip(
                 getDocumentBase(), "hi.au" );
      sound3 = getAudioClip(
              getDocumentBase(), "xyz.wav" );
      sound4 = getAudioClip(
    		  getDocumentBase(), "dham.wav" );
      sound5 = getAudioClip(
    		  getDocumentBase(), "applause.wav" );
      sound6 = getAudioClip(
    		  getDocumentBase(), "gb.wav" );
      sound7 = getAudioClip(
    		  getDocumentBase(), "thunder.wav" );
      sound8 = getAudioClip(
    		  getDocumentBase(), "awp.wav" );
      sound9 = getAudioClip(
    		  getDocumentBase(), "stepping.wav" );
      sound10 = getAudioClip(
    		  getDocumentBase(), "situation.wav" );
      sound11 = getAudioClip(
    		  getDocumentBase(), "startup.wav" );
      currentSound = sound1;
   }


   public void stop()
   {
      currentSound.stop();
   }

   private class ButtonHandler implements ActionListener {
      public void actionPerformed( ActionEvent e )
      {
         if ( e.getSource() == playSound ) 
            currentSound.play();
         else if ( e.getSource() == loopSound ) 
            currentSound.loop();
         else if ( e.getSource() == stopSound ) 
            currentSound.stop();
      }
   }
}