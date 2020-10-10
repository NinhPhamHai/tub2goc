.class public final enum Lcom/google/firebase/firestore/local/QueryPurpose;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/local/QueryPurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/local/QueryPurpose;

.field public static final enum EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

.field public static final enum LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

.field public static final enum LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/google/firebase/firestore/local/QueryPurpose;

    const/4 v1, 0x0

    const-string v2, "LISTEN"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/firestore/local/QueryPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 23
    new-instance v0, Lcom/google/firebase/firestore/local/QueryPurpose;

    const/4 v2, 0x1

    const-string v3, "EXISTENCE_FILTER_MISMATCH"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/local/QueryPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/local/QueryPurpose;

    const/4 v3, 0x2

    const-string v4, "LIMBO_RESOLUTION"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/firestore/local/QueryPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lcom/google/firebase/firestore/local/QueryPurpose;

    sget-object v4, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/firestore/local/QueryPurpose;->LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->$VALUES:[Lcom/google/firebase/firestore/local/QueryPurpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/local/QueryPurpose;
    .locals 1

    .line 18
    const-class v0, Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/local/QueryPurpose;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/local/QueryPurpose;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->$VALUES:[Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/local/QueryPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/local/QueryPurpose;

    return-object v0
.end method
