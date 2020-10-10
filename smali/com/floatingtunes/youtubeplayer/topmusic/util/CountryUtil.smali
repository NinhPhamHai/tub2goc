.class public Lcom/floatingtunes/youtubeplayer/topmusic/util/CountryUtil;
.super Ljava/lang/Object;
.source "CountryUtil.java"


# direct methods
.method public static getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "[\n\t{\n\t\t\"name\": \"\u4e39\u9ea6\",\n\t\t\"gl\": \"DK\"\n\t},\n\t{\n\t\t\"name\": \"\u4e4c\u514b\u5170\",\n\t\t\"gl\": \"UA\"\n\t},\n\t{\n\t\t\"name\": \"\u4e4c\u5e72\u8fbe\",\n\t\t\"gl\": \"UG\"\n\t},\n\t{\n\t\t\"name\": \"\u4e4c\u62c9\u572d\",\n\t\t\"gl\": \"UY\"\n\t},\n\t{\n\t\t\"name\": \"\u4ee5\u8272\u5217\",\n\t\t\"gl\": \"IL\"\n\t},\n\t{\n\t\t\"name\": \"\u4fc4\u7f57\u65af\",\n\t\t\"gl\": \"RU\"\n\t},\n\t{\n\t\t\"name\": \"\u51b0\u5c9b\",\n\t\t\"gl\": \"IS\"\n\t},\n\t{\n\t\t\"name\": \"\u52a0\u62ff\u5927\",\n\t\t\"gl\": \"CA\"\n\t},\n\t{\n\t\t\"name\": \"\u5308\u7259\u5229\",\n\t\t\"gl\": \"HU\"\n\t},\n\t{\n\t\t\"name\": \"\u5357\u975e\",\n\t\t\"gl\": \"ZA\"\n\t},\n\t{\n\t\t\"name\": \"\u5362\u68ee\u5821\u516c\u56fd\",\n\t\t\"gl\": \"LU\"\n\t},\n\t{\n\t\t\"name\": \"\u5371\u5730\u9a6c\u62c9\",\n\t\t\"gl\": \"GT\"\n\t},\n\t{\n\t\t\"name\": \"\u5384\u74dc\u591a\u5c14\",\n\t\t\"gl\": \"EC\"\n\t},\n\t{\n\t\t\"name\": \"\u54e5\u4f26\u6bd4\u4e9a\",\n\t\t\"gl\": \"CO\"\n\t},\n\t{\n\t\t\"name\": \"\u54e5\u65af\u8fbe\u9ece\u52a0\",\n\t\t\"gl\": \"CR\"\n\t},\n\t{\n\t\t\"name\": \"\u571f\u8033\u5176\",\n\t\t\"gl\": \"TR\"\n\t},\n\t{\n\t\t\"name\": \"\u5766\u6851\u5c3c\u4e9a\",\n\t\t\"gl\": \"TZ\"\n\t},\n\t{\n\t\t\"name\": \"\u585e\u5c14\u7ef4\u4e9a\",\n\t\t\"gl\": \"RS\"\n\t},\n\t{\n\t\t\"name\": \"\u58a8\u897f\u54e5\",\n\t\t\"gl\": \"MX\"\n\t},\n\t{\n\t\t\"name\": \"\u591a\u7c73\u5c3c\u52a0\u5171\u548c\u56fd\",\n\t\t\"gl\": \"DO\"\n\t},\n\t{\n\t\t\"name\": \"\u5965\u5730\u5229\",\n\t\t\"gl\": \"AT\"\n\t},\n\t{\n\t\t\"name\": \"\u5c3c\u52a0\u62c9\u74dc\",\n\t\t\"gl\": \"NI\"\n\t},\n\t{\n\t\t\"name\": \"\u5c3c\u65e5\u5229\u4e9a\",\n\t\t\"gl\": \"NG\"\n\t},\n\t{\n\t\t\"name\": \"\u5df4\u62c9\u572d\",\n\t\t\"gl\": \"PY\"\n\t},\n\t{\n\t\t\"name\": \"\u5df4\u62ff\u9a6c\",\n\t\t\"gl\": \"PA\"\n\t},\n\t{\n\t\t\"name\": \"\u5df4\u897f\",\n\t\t\"gl\": \"BR\"\n\t},\n\t{\n\t\t\"name\": \"\u5fb7\u56fd\",\n\t\t\"gl\": \"DE\"\n\t},\n\t{\n\t\t\"name\": \"\u610f\u5927\u5229\",\n\t\t\"gl\": \"IT\"\n\t},\n\t{\n\t\t\"name\": \"\u632a\u5a01\",\n\t\t\"gl\": \"NO\"\n\t},\n\t{\n\t\t\"name\": \"\u6377\u514b\",\n\t\t\"gl\": \"CZ\"\n\t},\n\t{\n\t\t\"name\": \"\u65b0\u897f\u5170\",\n\t\t\"gl\": \"NZ\"\n\t},\n\t{\n\t\t\"name\": \"\u65e5\u672c\",\n\t\t\"gl\": \"JP\"\n\t},\n\t{\n\t\t\"name\": \"\u667a\u5229\",\n\t\t\"gl\": \"CL\"\n\t},\n\t{\n\t\t\"name\": \"\u6bd4\u5229\u65f6\",\n\t\t\"gl\": \"BE\"\n\t},\n\t{\n\t\t\"name\": \"\u6cd5\u56fd\",\n\t\t\"gl\": \"FR\"\n\t},\n\t{\n\t\t\"name\": \"\u6ce2\u5170\",\n\t\t\"gl\": \"PL\"\n\t},\n\t{\n\t\t\"name\": \"\u6d25\u5df4\u5e03\u97e6\",\n\t\t\"gl\": \"ZW\"\n\t},\n\t{\n\t\t\"name\": \"\u6d2a\u90fd\u62c9\u65af\",\n\t\t\"gl\": \"HN\"\n\t},\n\t{\n\t\t\"name\": \"\u6fb3\u5927\u5229\u4e9a\",\n\t\t\"gl\": \"AU\"\n\t},\n\t{\n\t\t\"name\": \"\u7231\u5c14\u5170\",\n\t\t\"gl\": \"IE\"\n\t},\n\t{\n\t\t\"name\": \"\u7231\u6c99\u5c3c\u4e9a\",\n\t\t\"gl\": \"EE\"\n\t},\n\t{\n\t\t\"name\": \"\u73bb\u5229\u7ef4\u4e9a\",\n\t\t\"gl\": \"BO\"\n\t},\n\t{\n\t\t\"name\": \"\u745e\u5178\",\n\t\t\"gl\": \"SE\"\n\t},\n\t{\n\t\t\"name\": \"\u745e\u58eb\",\n\t\t\"gl\": \"CH\"\n\t},\n\t{\n\t\t\"name\": \"\u79d8\u9c81\",\n\t\t\"gl\": \"PE\"\n\t},\n\t{\n\t\t\"name\": \"\u7f57\u9a6c\u5c3c\u4e9a\",\n\t\t\"gl\": \"RO\"\n\t},\n\t{\n\t\t\"name\": \"\u7f8e\u56fd\",\n\t\t\"gl\": \"US\"\n\t},\n\t{\n\t\t\"name\": \"\u80af\u5c3c\u4e9a\",\n\t\t\"gl\": \"KE\"\n\t},\n\t{\n\t\t\"name\": \"\u82ac\u5170\",\n\t\t\"gl\": \"FI\"\n\t},\n\t{\n\t\t\"name\": \"\u82f1\u56fd\",\n\t\t\"gl\": \"GB\"\n\t},\n\t{\n\t\t\"name\": \"\u8377\u5170\",\n\t\t\"gl\": \"NL\"\n\t},\n\t{\n\t\t\"name\": \"\u8428\u5c14\u74e6\u591a\",\n\t\t\"gl\": \"SV\"\n\t},\n\t{\n\t\t\"name\": \"\u8461\u8404\u7259\",\n\t\t\"gl\": \"PT\"\n\t},\n\t{\n\t\t\"name\": \"\u897f\u73ed\u7259\",\n\t\t\"gl\": \"ES\"\n\t},\n\t{\n\t\t\"name\": \"\u963f\u6839\u5ef7\",\n\t\t\"gl\": \"AR\"\n\t},\n\t{\n\t\t\"name\": \"\u97e9\u56fd\",\n\t\t\"gl\": \"KR\"\n\t}\n]"

    .line 251
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 253
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 254
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "gl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const-string p0, "global"

    return-object p0
.end method

.method public static getCountryNameByCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "global"

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
