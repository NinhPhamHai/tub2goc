.class public Lcom/umeng/commonsdk/statistics/idtracking/s;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "UUIDTracker.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "uuid"

    .line 41
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 196
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 197
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p1, "UTF-8"

    const-string v0, ""

    const-string v1, "ro.yunos.openuuid"

    .line 101
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v1, "ro.aliyun.clouduuid"

    .line 106
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.sys.aliyun.clouduuid"

    .line 108
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 117
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://cmnsguider.yunos.com:443/genDeviceToken"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v2, 0x7530

    .line 119
    :try_start_1
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 120
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v2, "POST"

    .line 121
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 122
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 123
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 125
    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/s$1;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/s$1;-><init>(Lcom/umeng/commonsdk/statistics/idtracking/s;)V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "23338940"

    invoke-static {v3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FC1FE84794417B1BEF276234F6FB4E63"

    .line 135
    invoke-static {v3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 139
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 142
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_3

    .line 146
    :try_start_3
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 147
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    :try_start_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v5, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v0

    :goto_1
    move-object v0, v2

    move-object v2, v5

    goto :goto_7

    :catch_0
    move-object v3, v0

    :catch_1
    :goto_2
    move-object v0, p1

    goto :goto_3

    :catch_2
    :cond_3
    move-object v3, v0

    .line 165
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    if-eqz v3, :cond_4

    .line 172
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    nop

    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 179
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    nop

    :cond_5
    :goto_5
    if-eqz v1, :cond_b

    goto :goto_c

    :catchall_2
    move-exception p1

    move-object v3, v0

    move-object v0, v2

    goto :goto_6

    :catch_6
    move-object v0, v2

    goto :goto_b

    :catchall_3
    move-exception p1

    move-object v3, v0

    :goto_6
    move-object v2, v1

    move-object v1, v3

    goto :goto_7

    :catch_7
    nop

    goto :goto_b

    :catchall_4
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_7
    if-eqz v0, :cond_6

    .line 165
    :try_start_9
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    nop

    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    .line 172
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    nop

    :cond_7
    :goto_9
    if-eqz v1, :cond_8

    .line 179
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_a

    :catch_a
    nop

    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    .line 185
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    throw p1

    :catch_b
    move-object v1, v0

    :goto_b
    if-eqz v0, :cond_a

    .line 165
    :try_start_c
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :cond_a
    if-eqz v1, :cond_b

    .line 185
    :goto_c
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 191
    :cond_b
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 4

    const-string v0, "yosuid"

    const-string v1, ""

    :try_start_0
    const-string v2, "ro.yunos.version"

    .line 58
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 62
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "23346339"

    .line 64
    invoke-direct {p0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    return-object v1

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
