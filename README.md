일단 각에는 3가지 모드가 있을 수 있습니다. 더있을 수는 있지만 지금은 3가지만 구현합니다.

초기자에서 모드를 결정하도록 하고 default 는 Game 모드로 합니다. 

* Infinite : 스크류 드라이버처럼 회전수가 중요한 의미를 가질 경우 무한한 각을 표시할 수 있어야 합니다.
* Game : 게임에서 유닛의 방향처럼 회전수는 의미가 없고 가리키는 방향이 의미가 있을 경우 [0, 2π) 사이의 값 만이 의미가 있습니다.
* Steer : 물체의 이동 방향 변경할 때는 현재 진행방향에서 변화될 각을 더해주면 되는데 이때는 [-π, π) 사이의 값만이 의미가 있습니다.