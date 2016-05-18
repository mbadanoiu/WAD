/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utils;

/**
 *
 * @author Savanutul
 */
public class Hex {
    public static String asHex(byte buf[]){
        StringBuilder strbuf = new StringBuilder(buf.length * 2);

        for(int i=0; i< buf.length; i++){
                if(((int) buf[i] & 0xff) < 0x10)
                        strbuf.append("0");
                strbuf.append(Long.toString((int) buf[i] & 0xff, 16));
        }
        return strbuf.toString();
    }
    
    public static byte[] asBytes (String s) {
        String s2;
        byte[] b = new byte[s.length() / 2];
        int i;
        for (i = 0; i < s.length() / 2; i++) {
            s2 = s.substring(i * 2, i * 2 + 2);
            b[i] = (byte)(Integer.parseInt(s2, 16) & 0xff);
        }
        return b;
    }
}
