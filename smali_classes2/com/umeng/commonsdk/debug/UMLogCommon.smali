.class public Lcom/umeng/commonsdk/debug/UMLogCommon;
.super Ljava/lang/Object;
.source "UMLogCommon.java"


# static fields
.field public static final SC_10001:Ljava/lang/String;

.field public static final SC_10002:Ljava/lang/String;

.field public static final SC_10007:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u80fd\u5728\u975e\u4e3b\u8fdb\u7a0b\u8fdb\u884c\u521d\u59cb\u5316|\u76ee\u524d\u53ea\u80fd\u5728\u4e3b\u8fdb\u7a0b\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u5982\u4f55\u6b63\u786e\u521d\u59cb\u5316\u8bf7\u8be6\u89c1\u5730\u5740\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "67292"

    .line 10
    invoke-static {v1}, Lcom/umeng/commonsdk/debug/UMLogUtils;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10001:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u80fd\u5728\u975eApplication\u7684onCreate\u65b9\u6cd5\u4e2d\u8fdb\u884c\u521d\u59cb\u5316|\u76ee\u524d\u53ea\u80fd\u5728Application\u7684onCreate\u65b9\u6cd5\u4e2d\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u5982\u4f55\u6b63\u786e\u521d\u59cb\u5316\u8bf7\u8be6\u89c1\u5730\u5740\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v1}, Lcom/umeng/commonsdk/debug/UMLogUtils;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10002:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppKey\u4e0d\u80fd\u4e3a\u7a7a|\u60a8\u5fc5\u987b\u6b63\u786e\u8bbe\u7f6eAppKey\uff0c\u5982\u4f55\u6b63\u786e\u521d\u59cb\u5316\u8bf7\u8be6\u89c1\u5730\u5740\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {v1}, Lcom/umeng/commonsdk/debug/UMLogUtils;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10007:Ljava/lang/String;

    return-void
.end method
