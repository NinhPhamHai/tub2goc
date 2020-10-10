.class public final enum Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/DocumentSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerTimestampBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

.field static final DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

.field public static final enum ESTIMATE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

.field public static final enum NONE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

.field public static final enum PREVIOUS:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->NONE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 70
    new-instance v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    const/4 v2, 0x1

    const-string v3, "ESTIMATE"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->ESTIMATE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 76
    new-instance v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    const/4 v3, 0x2

    const-string v4, "PREVIOUS"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->PREVIOUS:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    sget-object v4, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->NONE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->ESTIMATE:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->PREVIOUS:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->$VALUES:[Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 78
    sput-object v4, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .locals 1

    .line 57
    const-class v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .locals 1

    .line 57
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->$VALUES:[Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    return-object v0
.end method
