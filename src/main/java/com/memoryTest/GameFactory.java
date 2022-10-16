package com.memoryTest;

import com.memoryTest.config.MethodConfig;

import java.util.Random;

/**
 * @author sayCode
 * @date 2022/10/14 22:03
 * @project project
 * @Title GameThread
 * @description TODO
 */
public class GameFactory {
    static int time;
    static int strLen;
    static StringBuffer stringBuffer = new StringBuffer();
    static StringBuffer stringBufferIndex = new StringBuffer();

    private final static MethodConfig methodConfig = new MethodConfig();
    private final static String FLOWER = "❀";
    private final static String N_FLOWER = "2";
    private final static String CAKE = "\uD83C\uDF82";
    private final static String N_CAKE = "1";
    private final static String STAR = "★";
    private final static String N_STAR = "3";

    public static void refresh(){
        methodConfig.setMethod(MethodConfig.REFRESH);
    }

    public static void setMethod(int method){
        methodConfig.setMethod(method);
        time = methodConfig.getTime();
        strLen = methodConfig.getStrLen();
        Random rand = new Random();
        stringBufferIndex.delete(0,stringBufferIndex.length());
        stringBuffer.delete(0,stringBuffer.length());
        for (int i=0; i<strLen; i++){
            int obs = rand.nextInt(3)+1;
            switch (obs){
                case 1:
                    stringBuffer.append(FLOWER);
                    stringBufferIndex.append(N_FLOWER);
                    break;
                case 2:
                    stringBuffer.append(CAKE);
                    stringBufferIndex.append(N_CAKE);
                    break;
                case 3:
                    stringBuffer.append(STAR);
                    stringBufferIndex.append(N_STAR);
                    break;
                default:break;
            }
        }
    }

    public static int getTime() {
        return time;
    }


    public static StringBuffer getStringBuffer() {
        return stringBuffer;
    }

    public static StringBuffer getStringBufferIndex() {
        return stringBufferIndex;
    }
}
