.class public final enum Lcom/umeng/commonsdk/proguard/h$e;
.super Ljava/lang/Enum;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/proguard/h$e;",
        ">;",
        "Lcom/umeng/commonsdk/proguard/s;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum b:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum c:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum d:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum e:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum f:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum g:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum h:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum i:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum j:Lcom/umeng/commonsdk/proguard/h$e;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/proguard/h$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/umeng/commonsdk/proguard/h$e;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 91
    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "VERSION"

    const-string v4, "version"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->a:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/4 v3, 0x2

    const-string v4, "ADDRESS"

    const-string v5, "address"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->b:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/4 v4, 0x3

    const-string v5, "SIGNATURE"

    const-string v6, "signature"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->c:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/4 v5, 0x4

    const-string v6, "SERIAL_NUM"

    const-string v7, "serial_num"

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->d:Lcom/umeng/commonsdk/proguard/h$e;

    .line 92
    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/4 v6, 0x5

    const-string v7, "TS_SECS"

    const-string v8, "ts_secs"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->e:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/4 v7, 0x6

    const-string v8, "LENGTH"

    const-string v9, "length"

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->f:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/4 v8, 0x7

    const-string v9, "ENTITY"

    const-string v10, "entity"

    invoke-direct {v0, v9, v7, v8, v10}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->g:Lcom/umeng/commonsdk/proguard/h$e;

    .line 93
    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/16 v9, 0x8

    const-string v10, "GUID"

    const-string v11, "guid"

    invoke-direct {v0, v10, v8, v9, v11}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->h:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/16 v10, 0x9

    const-string v11, "CHECKSUM"

    const-string v12, "checksum"

    invoke-direct {v0, v11, v9, v10, v12}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->i:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const/16 v11, 0xa

    const-string v12, "CODEX"

    const-string v13, "codex"

    invoke-direct {v0, v12, v10, v11, v13}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->j:Lcom/umeng/commonsdk/proguard/h$e;

    .line 90
    new-array v0, v11, [Lcom/umeng/commonsdk/proguard/h$e;

    sget-object v11, Lcom/umeng/commonsdk/proguard/h$e;->a:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v11, v0, v1

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->b:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->c:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->d:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->e:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->f:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->g:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->h:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->i:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->j:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v10

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->n:[Lcom/umeng/commonsdk/proguard/h$e;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->k:Ljava/util/Map;

    .line 98
    const-class v0, Lcom/umeng/commonsdk/proguard/h$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/proguard/h$e;

    .line 99
    sget-object v2, Lcom/umeng/commonsdk/proguard/h$e;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/h$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput-short p3, p0, Lcom/umeng/commonsdk/proguard/h$e;->l:S

    .line 158
    iput-object p4, p0, Lcom/umeng/commonsdk/proguard/h$e;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h$e;
    .locals 1

    .line 90
    const-class v0, Lcom/umeng/commonsdk/proguard/h$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/proguard/h$e;
    .locals 1

    .line 90
    sget-object v0, Lcom/umeng/commonsdk/proguard/h$e;->n:[Lcom/umeng/commonsdk/proguard/h$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/proguard/h$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/proguard/h$e;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/h$e;->m:Ljava/lang/String;

    return-object v0
.end method
