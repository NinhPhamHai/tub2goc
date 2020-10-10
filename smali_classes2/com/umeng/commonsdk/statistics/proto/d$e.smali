.class public final enum Lcom/umeng/commonsdk/statistics/proto/d$e;
.super Ljava/lang/Enum;
.source "Imprint.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/proto/d$e;",
        ">;",
        "Lcom/umeng/commonsdk/proguard/s;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/statistics/proto/d$e;

.field public static final enum b:Lcom/umeng/commonsdk/statistics/proto/d$e;

.field public static final enum c:Lcom/umeng/commonsdk/statistics/proto/d$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/umeng/commonsdk/statistics/proto/d$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PROPERTY"

    const-string v4, "property"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/commonsdk/statistics/proto/d$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    const/4 v3, 0x2

    const-string v4, "VERSION"

    const-string v5, "version"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/umeng/commonsdk/statistics/proto/d$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    const/4 v4, 0x3

    const-string v5, "CHECKSUM"

    const-string v6, "checksum"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/umeng/commonsdk/statistics/proto/d$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->c:Lcom/umeng/commonsdk/statistics/proto/d$e;

    .line 68
    new-array v0, v4, [Lcom/umeng/commonsdk/statistics/proto/d$e;

    sget-object v4, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    aput-object v4, v0, v1

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->c:Lcom/umeng/commonsdk/statistics/proto/d$e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->g:[Lcom/umeng/commonsdk/statistics/proto/d$e;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->d:Ljava/util/Map;

    .line 74
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

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

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/d$e;

    .line 75
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/d$e;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/d$e;->b()Ljava/lang/String;

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

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-short p3, p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->e:S

    .line 120
    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 1

    .line 68
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 1

    .line 68
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->g:[Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/d$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->f:Ljava/lang/String;

    return-object v0
.end method
