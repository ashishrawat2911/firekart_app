/*
 *
 */
package com.ecommerce.app.utils;

import java.util.Date;
import java.util.UUID;

/**
 * 128 bit UUID (Universal Unique ID)
 */

public class UniqueID {
    public static String[] hardKey = new String[100];

    /**
     * 128 bit UUID
     */
    public static synchronized String getUUID() {
        String uuid = UUID.randomUUID().toString();
        return uuid.replace("-", "");
    }


    public static synchronized int gethardKeyIndex() {
        long keyLong = new Date().getTime();
        int id = (int) keyLong;
        if (id < 0)
            id = id * (-1);
        return id;
    }

    public static String generateOderNumber() {
        String oderNumber = String.valueOf(new Date().getTime());
        return oderNumber;
    }

    public static synchronized String gethardKey(int index) {
        return hardKey[index];
    }


    public static synchronized void sethardKey() {
        hardKey[0] = "05ebdb6ed24fe902bc400499af84e08d";
        hardKey[1] = "2640ad3fc681605d0924a43cd1e40db9";
        hardKey[2] = "66fe37fe404dbfc407ba5eb69d7b1270";
        hardKey[3] = "4c24cb91e0239ba13a45f8ca435fe1a8";
        hardKey[4] = "28826d545a6894c50ece47875bf9a05b";
        hardKey[5] = "e8a4b4ff68aa59d34fec62d06a96327f";
        hardKey[6] = "f211c959b34197f58a2c5576cf80fbe8";
        hardKey[7] = "e2ede137e2524ce0394dd8260b3c5bc9";
        hardKey[8] = "bb25c6cbd1776039377c9b0bdf3e682a";
        hardKey[9] = "1325ef2dcaf3715b518170936230eb54";
        hardKey[10] = "501bcc56ef03757f3b611b064a1f0f2f";
        hardKey[11] = "cd65e0262d6de0baf08ffb74a0d04fa1";
        hardKey[12] = "c10928f77b2651dd6a97e0f5b8c62408";
        hardKey[13] = "3b560757ed7e34c5d1d69e81b304d89c";
        hardKey[14] = "b30fe8d9dea4cd1722fcec003af068c5";
        hardKey[15] = "487fe3c98b272239ea0b498bfb98e78d";
        hardKey[16] = "8332badcc2919b5ad8a43bd1c5752b5c";
        hardKey[17] = "9984c36a3c6c205a9297656e17808a31";
        hardKey[18] = "811ba0118c4f82e811e162798ce27ed2";
        hardKey[19] = "0b25c17552b19a1be2ee74c6e2d34386";
        hardKey[20] = "ca89be87f28bcb8ac5cb61322c65410f";
        hardKey[21] = "f32eb399077b71f1cb770080de22b7ac";
        hardKey[22] = "6ed66483e924f4d17ecede402020d750";
        hardKey[23] = "a3f2e02688121e066d35529e17ad3bed";
        hardKey[24] = "a1b81413a0a75b0451ef306d5f18ae5f";
        hardKey[25] = "6a11b9d67ae7dfade3e2909775cca5a3";
        hardKey[26] = "41bf98a0423284cf1e4536311423d342";
        hardKey[27] = "e81438be4d8d6444dbde0e4b19ea49d8";
        hardKey[28] = "420d8df850a39f18432fe3ead7ed1d35";
        hardKey[29] = "007166e83bbb4bebaf1f27e3c98bc7c3";
        hardKey[30] = "f6700f025f87423c4eba6065b01a22eb";
        hardKey[31] = "fc89152ee93cd2bcb0de91620b1b8534";
        hardKey[32] = "a745a4fbf6302f347fbb13545b636568";
        hardKey[33] = "5f2dbc1ff4c2744fdb408f966e28e11a";
        hardKey[34] = "04fafd1d2faaf0daa04d9c56c7ce4827";
        hardKey[35] = "b8dcf1353c2fb78690da05f95e5e2bd9";
        hardKey[36] = "44d33752d31b720d78ebaf9a085fc996";
        hardKey[37] = "7108cb590a77b058286b2ee4e0e6c404";
        hardKey[38] = "d53d2c72b86dae3cd87de68f3c2f9393";
        hardKey[39] = "784d36c73a86b278eab009b9d4b8119d";
        hardKey[40] = "010e71c89251725e0f901e0226e8d7be";
        hardKey[41] = "dd522fba7e85f1c680dfe103a8fccf58";
        hardKey[42] = "a057714bb23289e601627288e4ed0d71";
        hardKey[43] = "92a0d0797236cd11e169deef34494c06";
        hardKey[44] = "4a3953bc594f86bb338faacd2e7d2c3d";
        hardKey[45] = "18dc2abc0dcca2a12da3589862f8da08";
        hardKey[46] = "e455ed908f979818f9f7851ea438e731";
        hardKey[47] = "921ebe4649c4a0edd18110f28ef278ba";
        hardKey[48] = "f55627e51b80dd9be2682e07ac49669d";
        hardKey[49] = "dfa22a787d32768846eb5b478df0ac4a";
        hardKey[50] = "7b1441529f1e2b7025480b37dc09ac59";
        hardKey[51] = "ebc91db57075e67fb5dc2b294519cf72";
        hardKey[52] = "4e4dadefc327a200a884dddc79690930";
        hardKey[53] = "78b95162483868542c710b7eece626eb";
        hardKey[54] = "e779412584e8acfed1d992a645bfb83d";
        hardKey[55] = "29d106cecc05612362970b5d06e9fe14";
        hardKey[56] = "72f418d826f89e5bf5dba17ba1fe25fc";
        hardKey[57] = "55e8d0706e6268679b21f94c1e7d8711";
        hardKey[58] = "b74d057d88eec14f68fd0ad2a5db2d03";
        hardKey[59] = "8d4336def25836df1a5acb9de01bbca2";
        hardKey[60] = "b877b21d083e500b4cb3a8e0603f7a61";
        hardKey[61] = "a6df4205bb02ab1a869ffc6f0da0fbf4";
        hardKey[62] = "16ab1e13e292518c705864eb11981797";
        hardKey[63] = "40c70511ad916fe92ee48bca1aa54935";
        hardKey[64] = "6135e1292718764161fb5473ee09024f";
        hardKey[65] = "6570b05def350f5a144f3f55ec13836e";
        hardKey[66] = "fc01cde09dee8b8c18d770fb8d8248a1";
        hardKey[67] = "f0ba91818221ecc084b3b6f964e37b7f";
        hardKey[68] = "b251dc182ca1f0e40b4a9f14fe993a73";
        hardKey[69] = "053748e1826db5835503ac1ec844b211";
        hardKey[70] = "813c72b7b9f2df650ac7c25d3bafc812";
        hardKey[71] = "0547468e943e10240d5f9c0232569d36";
        hardKey[72] = "ab91437404d07679854fd629f40471db";
        hardKey[73] = "adfc93207499020cee1be45b72fa412b";
        hardKey[74] = "87a66fe97e0178ad8c98680e1726a9f2";
        hardKey[75] = "77f25f687a5e98f53823531139e77e66";
        hardKey[76] = "dc6bf304c09a19c9050e96166be6bf9b";
        hardKey[77] = "8eabfb2ea70eadfc561ef909b0160ddf";
        hardKey[78] = "14c711fde0a41d4d5a308bfff02a4887";
        hardKey[79] = "8ab93f2c50995e2925c7e5e28871e9d4";
        hardKey[80] = "d45b6a2a3773166ce4ea7f3d70597274";
        hardKey[81] = "fcb4c2e0736e9b835ad4366bfce1acad";
        hardKey[82] = "a298e4c037df32b8dee220e818664f9b";
        hardKey[83] = "c411bae14d117052c6c6a77b2e2ed68f";
        hardKey[84] = "38bf03f41fd426d8da20f741ae0edb49";
        hardKey[85] = "ee98077d7259826bb570f9ecac5583b7";
        hardKey[86] = "75d8e6f2422e764dceba6704850ee241";
        hardKey[87] = "725d135c0f6cd9514925b98ecd02c32f";
        hardKey[88] = "ecfe1441c23dd3b22f58858f2d9df3eb";
        hardKey[89] = "4da9c74224a25897f78110988c8e8c0e";
        hardKey[90] = "5363c0220fc28c4148b195c3edfe741b";
        hardKey[91] = "a34f343d2dd76d8a635a8ab5692af8d6";
        hardKey[92] = "13d266824ba10902ac5b5b0fdcaedbcc";
        hardKey[93] = "818f9735f3fcd1185817251ce285186f";
        hardKey[94] = "b351def7a207a80248a742aef9120681";
        hardKey[95] = "ff92c266bdf9c8c7d797b336f91c9dab";
        hardKey[96] = "bda9f5f9eb576cbe1862bca1ad9d84b8";
        hardKey[97] = "ddda8670d0f13832d5117a998f27270c";
        hardKey[98] = "6eba9a2eeeaa1c61f50eb9c90b7d57f0";
        hardKey[99] = "7786f53bf8e3ab117808475a3e6e1675";
    }
}
