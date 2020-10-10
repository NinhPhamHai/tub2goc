.class public Lcom/umeng/commonsdk/proguard/x;
.super Ljava/lang/Object;
.source "FieldMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/l;",
            ">;",
            "Ljava/util/Map<",
            "+",
            "Lcom/umeng/commonsdk/proguard/s;",
            "Lcom/umeng/commonsdk/proguard/x;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:Lcom/umeng/commonsdk/proguard/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/x;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/x;->a:Ljava/lang/String;

    .line 48
    iput-byte p2, p0, Lcom/umeng/commonsdk/proguard/x;->b:B

    .line 49
    iput-object p3, p0, Lcom/umeng/commonsdk/proguard/x;->c:Lcom/umeng/commonsdk/proguard/y;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/l;",
            ">;",
            "Ljava/util/Map<",
            "+",
            "Lcom/umeng/commonsdk/proguard/s;",
            "Lcom/umeng/commonsdk/proguard/x;",
            ">;)V"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/umeng/commonsdk/proguard/x;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
