@echo off

cd %~dp0

cd Release

echo test primitive
(test_primitive && echo Succeed) || echo Failed
echo test sleep
(test_sleep > nul && echo Succeed) || echo Failed
echo test udp [3]
(test_udp > nul && echo Succeed) || echo Failed
(test_udp2 > nul && echo Succeed) || echo Failed
(test_udp3 > nul && echo Succeed) || echo Failed
echo test tcp [3]
(test_tcp > nul && echo Succeed) || echo Failed
(test_tcp2 > nul && echo Succeed) || echo Failed
(test_tcp3 > nul && echo Succeed) || echo Failed
echo test tcp timing (lite)
(unexpected_tcp_timing > nul && echo Succeed) || echo Failed
echo test getaddrinfo
(test_getaddrinfo > nul && echo Succeed) || echo Failed
echo benchmark sleep
(benchmark_sleep > nul && echo Succeed) || echo Failed
echo benchmark udp (lite)
(benchmark_udp2 > nul && echo Succeed) || echo Failed
echo benchmark tcp (lite)
(benchmark_tcp > nul && echo Succeed) || echo Failed

pause
