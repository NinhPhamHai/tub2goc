.class public final enum Lcom/umeng/commonsdk/statistics/proto/a$e;
.super Ljava/lang/Enum;
.source "IdJournal.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/proto/a$e;",
        ">;",
        "Lcom/umeng/commonsdk/proguard/s;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field public static final enum b:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field public static final enum c:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field public static final enum d:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/umeng/commonsdk/statistics/proto/a$e;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 71
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "DOMAIN"

    const-string v4, "domain"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->a:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const/4 v3, 0x2

    const-string v4, "OLD_ID"

    const-string v5, "old_id"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const/4 v4, 0x3

    const-string v5, "NEW_ID"

    const-string v6, "new_id"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->c:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const/4 v5, 0x4

    const-string v6, "TS"

    const-string v7, "ts"

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->d:Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 70
    new-array v0, v5, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    sget-object v5, Lcom/umeng/commonsdk/statistics/proto/a$e;->a:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v5, v0, v1

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->c:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->d:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->h:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->e:Ljava/util/Map;

    .line 76
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

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

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 77
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/a$e;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/a$e;->b()Ljava/lang/String;

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

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-short p3, p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->f:S

    .line 124
    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .locals 1

    .line 70
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/a$e;
    .locals 1

    .line 70
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->h:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->g:Ljava/lang/String;

    return-object v0
.end method
